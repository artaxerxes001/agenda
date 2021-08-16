function confirmar(idcon) {
    let resposta= confirm("confirmar a exclusao deste contato ?")
    
    if (resposta === true) {
        

        window.location.href="delete?idcon=" + idcon
    }
    

}