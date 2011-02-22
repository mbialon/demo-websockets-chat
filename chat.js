var socket = new WebSocket('ws://localhost:8888');
socket.onopen = function(evt) {
    alert('open');
};
socket.onmessage = function(evt) {
    alert('msg');
    alert(evt.data);
};
socket.onclose = function(evt) {
    alert('close');
};