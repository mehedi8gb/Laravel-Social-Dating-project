<?php

namespace App\Listeners;

use App\Events\NewPostEvent;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use App\Notifications\NewPost;
use Carbon\Carbon;

class NewPostListener implements ShouldQueue
{

    /**
     * Create the event listener.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Handle the event.
     *
     * @param  NewPostEvent  $event
     * @return void
     */
    public function handle(NewPostEvent $event)
    {
      // Get post
      $post = $event->post;

      // Get Subscriptions Active
      $subscriptionsActive = $post->user()->mySubscriptions()
          ->where('stripe_id', '=', '')
            ->whereDate('ends_at', '>=', Carbon::today())
            ->orWhere('stripe_status', 'active')
              ->where('stripe_id', '<>', '')
                ->whereStripePlan($post->user()->plan)
                ->orWhere('stripe_id', '=', '')
              ->where('stripe_plan', $post->user()->plan)
          ->where('free', '=', 'yes')
        ->get();

        // Send an email notification to all subscribers when there is a new post
        foreach ($subscriptionsActive as $subscriber) {

          if ($subscriber->user()->notify_email_new_post == 'yes') {

            try {
            $subscriber->user()->notify(new NewPost($post));
            } catch (\Exception $e) {
              \Log::info($e->getMessage());
            }
          }
        }
    }
}
