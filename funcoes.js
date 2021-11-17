$(document).ready(function(){
    $(function(){
        $.getJSON("js/automoveis.json", function(data) {
            for(var i = 0; i < data['automoveis'].length; i++){
                $("#TableData").append("<tr>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['MARCA'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CARRO'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CAMBER_DIANTEIRO_MIN'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CAMBER_DIANTEIRO_MAX'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CASTER_DIANTEIRO_MIN'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CASTER_DIANTEIRO_MAX'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CONVERGENCIA_DIANTEIRO_MIN'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CONVERGENCIA_DIANTEIRO_MAX'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CAMBER_TRASEIRA_MIN'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CAMBER_TRASEIRA_MAX'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CONVERGENCIA_TRASEIRA_MIN'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CONVERGENCIA_TRASEIRA_MAX'] + "</th>");
                $("#TableData").append("</tr>");
            }
            
        });
    });
    $("body").on("click", "#ButtonBuscar" , function() {
       var search = document.getElementById("Procuracarro").value;
       $("#TableData").html("");
       $.getJSON("js/automoveis.json", function(data) {
        for(var i = 0; i < data['automoveis'].length; i++){
            if (data['automoveis'][i]['MARCA'].indexOf(search.toUpperCase()) > -1) {
                $("#TableData").append("<tr>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['MARCA'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CARRO'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CAMBER_DIANTEIRO_MIN'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CAMBER_DIANTEIRO_MAX'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CASTER_DIANTEIRO_MIN'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CASTER_DIANTEIRO_MAX'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CONVERGENCIA_DIANTEIRO_MIN'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CONVERGENCIA_DIANTEIRO_MAX'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CAMBER_TRASEIRA_MIN'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CAMBER_TRASEIRA_MAX'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CONVERGENCIA_TRASEIRA_MIN'] + "</th>");
                $("#TableData").append("<th scope='col'>" + data['automoveis'][i]['CONVERGENCIA_TRASEIRA_MAX'] + "</th>");
                $("#TableData").append("</tr>");
            }
        }
        
    });
    })
   
});


