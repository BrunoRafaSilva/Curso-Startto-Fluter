enum StatusPagamento { pendentes, pago, reembolsado }

void main() {
  //quero que somente seja guardado um resultado
  StatusPagamento status = StatusPagamento.pago;
  switch (status) {
    case StatusPagamento.pendentes:
      // TODO: Handle this case.
      break;
    case StatusPagamento.pago:
      // TODO: Handle this case.
      break;
    case StatusPagamento.reembolsado:
      // TODO: Handle this case.
      break;
  }

  print(status.index);
  print(StatusPagamento.values[1]);
}
