var SerialPort = require("serialport").SerialPort
var serialPort = new SerialPort("/dev/ttyMCC", {
  baudrate: 9600
}); 

serialPort.open(function (error) {
  if ( error ) {
    console.log('failed to open: '+error);
  } else {
    console.log('open');
    serialPort.on('data', function(data) {
      console.log('data received: ' + data);
    });
  }
});
