// var countsMsg = parseInt($("input[name=message_count]").val());

function MsgNotify(response) {
    Push.create(response.name, {
        body: response.data,
        timeout: 20000,
        icon: response.avatar,
        onClick: function() {
            window.open(response.link); //just added the window.open to a OnClick event.
            this.close();
        }
    });
}