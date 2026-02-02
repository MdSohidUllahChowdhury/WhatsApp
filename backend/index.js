const port = 5000;
const express = require('express');
const cors = require('cors');
var http = require('http');
const app = express();
const server = http.createServer(app);
const io = require('socket.io')(server)

//Middel Ware
//app.use(cors());
app.use(express.json());

//
io.on("Connectin", (socket) => {
  console.log("Connected")
  console.log(socket.id)
  socket.on('event',
    (data) => {
    console.log(data)
    io.emit('event', data)
  })
}
);

server.listen(port, "192.168.0.212", () =>
  console.log(`Server Started ${port}`))
