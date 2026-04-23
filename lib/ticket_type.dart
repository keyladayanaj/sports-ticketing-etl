import 'ticket_type.dart';

enum TicketType {
  arquibancada,
  cadeira,
  camarote,
}

int getTicketPrice(TicketType type) {
  switch (type) {
    case TicketType.arquibancada:
      return 50;
    case TicketType.cadeira:
      return 90;
    case TicketType.camarote:
      return 160;
  }
}

String getTicketTitle(TicketType type) {
  switch (type) {
    case TicketType.arquibancada:
      return 'Arquibancada';
    case TicketType.cadeira:
      return 'Cadeira';
    case TicketType.camarote:
      return 'Camarote';
  }
}