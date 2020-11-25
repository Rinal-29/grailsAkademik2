$(document).ready( function () {
    $('#myTable').DataTable();

    $("#myTab li a").on("click", function (){
        $(this).addClass("active");
    })

    let lengthTable = $("#myTable tbody tr").length;
    console.log(lengthTable);
    if (lengthTable > 1){
        $('#myTable tbody tr').each(function (index) {
            $(this).children("td:eq(0)").html(index + 1);
        });
    }
} );


