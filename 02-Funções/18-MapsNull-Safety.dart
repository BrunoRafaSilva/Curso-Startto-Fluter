void main() {
  //? depois de String ele pode conter null
  Map<int, String?> ddds1 = {
    11: 'São Paulo',
    82: 'Maceió',
    41: 'Curitiba',
    76: null
  };

  //ele irá inicar vazio com '?' fora
  Map<int, String>? ddds2;
  ddds2 = {11: 'Seu Paulo', 82: 'Maceyork', 41: 'Curitiba'};
  print(ddds2);

  ddds2.remove(11);
  ;
  print(ddds2);

  //pode iniciar null ou vazio e pode conter null
  Map<int, String?>? ddds3;

}
