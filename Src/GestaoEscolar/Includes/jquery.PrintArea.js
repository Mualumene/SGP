function btnPrintClick() {
    $("#btnImprimir").unbind('click').click(function() {
        $("#divDeclaracao").printThis({ pageTitle: "Impress�o" });
    });
}

 // Insere as fun��es na lista de func�es - ser� chamado no Init.js.
arrFNC.push(btnPrintClick);
arrFNCSys.push(btnPrintClick);



