import '../data/produto_dao.dart';
import '../Model/produto.dart';


class ProdutoRepository {
  
  final ProdutoDao _dao = ProdutoDao();


  // LISTAR
  Future<List<Produto>> listar() => _dao.listar();


  //SALVAR

  Future<void> salvar(Produto produto) async {
    if(produto.id == null) {
      await _dao.inserir(produto);
    } else {
      await _dao.atualizar(produto);
    }
  }



  //DELETAR


  Future<void> remover(int id) => _dao.deletar(id);



}