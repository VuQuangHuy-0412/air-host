// Set new default font family and font color to mimic Bootstrap's default styling
Chart.defaults.global.defaultFontFamily = '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
Chart.defaults.global.defaultFontColor = '#292b2c';

// Pie Chart Example
var ctx1 = document.getElementById("temperature");
var temp = dataCurrent.temp;
var temperature = new Chart(ctx1, {
  type: 'doughnut',
  data: {
    datasets: [{
      data: [temp, 100-temp],
      backgroundColor: ['#9acd32', '#808080'],
    }],
  },
});

var ctx2 = document.getElementById("humidity");
var hum = dataCurrent.humidity;
var humidity = new Chart(ctx2, {
  type: 'doughnut',
  data: {
    datasets: [{
      data: [hum, 100-hum],
      backgroundColor: ['#1e90ff', '#808080'],
    }],
  },
});

var ctx3 = document.getElementById("UV_intensity");
var UV_intensity = new Chart(ctx3, {
  type: 'doughnut',
  data: {
    datasets: [{
      data: [2, 0],
      backgroundColor: ['#FF0000', '#808080'],
    }],
  },
});

var ctx4 = document.getElementById("aqi");
var aqi = new Chart(ctx4, {
  type: 'doughnut',
  data: {
    datasets: [{
      data: [78, 0],
      backgroundColor: ['#FFFF00', '#808080'],
    }],
  },
});
