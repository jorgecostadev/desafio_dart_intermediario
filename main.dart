void main() {
  var pessoas = [
    'Rodrigo Rahman|35|Masculino',
    'Jose|56|Masculino',
    'Joaquim|84|Masculino',
    'Rodrigo Rahman|35|Masculino',
    'Maria|88|Feminino',
    'Helena|24|Feminino',
    'Leonardo|5|Masculino',
    'Laura Maria|29|Feminino',
    'Joaquim|72|Masculino',
    'Helena|24|Feminino',
    'Guilherme|15|Masculino',
    'Manuela|85|Masculino',
    'Leonardo|5|Masculino',
    'Helena|24|Feminino',
    'Laura|29|Feminino',
  ];

  // Baseado na lista acima.
  // 1 - Remover os duplicados
  Set<String> listaPessoas = {};
  listaPessoas.addAll(pessoas);

  // 2 - Me mostre a quantidade de pessoas do sexo Masculino e Feminino
  final quantMasculino = listaPessoas.where((p) => p.contains('Masculino')).length;
  final quantFeminino = listaPessoas.where((p) => p.contains('Feminino')).length;
  print('Quantidade de pessoas do sexo Masculino: $quantMasculino');
  print('Quantidade de pessoas do sexo Feminino: $quantFeminino');
  print('');

  // 3 - Filtrar e deixar a lista somente com pessoas maiores de 18 anos
  //     e mostre a quantidade de pessoas com mais de 18 anos
  var maiorIdade = 0;
  var pessoaMaisVelha = '';

  List<String> listaMaiores18Anos = [];
  listaPessoas.forEach((p) {
    final idade = int.parse(p.split('|')[1]);
    if (idade > 18) {
      if (idade > maiorIdade) {
        maiorIdade = idade;
        pessoaMaisVelha = p;
      }

      listaMaiores18Anos.add(p);
    }
  });

  print('Quantidade de pessoas com mais de 18 anos: ${listaMaiores18Anos.length}');
  print('');

  // 4 - Encontre a pessoa mais velha.
  print('Pessoa mais velha: ${pessoaMaisVelha.split('|')}');
}
