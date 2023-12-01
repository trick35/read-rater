function deletar(){
    swal({
        title: "Tem certeza?",
        text: "Você realmente deseja excluir este usuário?",
        icon: "warning",
        buttons: true,
        dangerMode: true,
        })
        .then((willDelete) => {
        if (willDelete) {
            swal("Usuário deletado!", {
            icon: "success",
            });
        } else {
            swal("ERRO! Usuário não deletado!");
        }
    });
}