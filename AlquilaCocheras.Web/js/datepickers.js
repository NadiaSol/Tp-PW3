///picker Propietario - Cochera

$('#pickerCocheras .time').timepicker({
    'showDuration': true,
    'timeFormat': 'g:ia'
});

$('#pickerCocheras .date').datepicker({
    'format': 'm/d/yyyy',
    'autoclose': true
});

var pickerCocherasEl = document.getElementById('pickerCocheras');
var pickerCocherasDatepair = new Datepair(pickerCocherasEl);

$('#pickerCocheras').on('rangeIncomplete', function () {
    $('#pickerCocherasStatus').text('Incomplete range');
}).on('rangeError', function () {
    $('#pickerCocherasStatus').text('Invalid range');
});

///picker Propietario - Reservas

$('#pickerReservas .time').timepicker({
    'showDuration': true,
    'timeFormat': 'g:ia'
});

$('#pickerReservas .date').datepicker({
    'format': 'm/d/yyyy',
    'autoclose': true
});

var pickerReservasEl = document.getElementById('pickerReservas');
var pickerReservasDatepair = new Datepair(pickerReservasDatepair);

// some sample handlers
$('#pickerReservas').on('rangeIncomplete', function () {
    $('#pickerReservasStatus').text('Incomplete range');
}).on('rangeError', function () {
    $('#pickerReservasStatus').text('Invalid range');
});