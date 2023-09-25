/**
 *  Open-close Principles
 * 
 *Gmail,Yahoo and Hotmail are subclasses of Email class 
 so the Email can be any one of them 
 * */

abstract class Emale {
  void send() {
    print('This is a ${this.runtimeType.toString()} message');
  }
}
class Gmail extends Emale {
}

class Yahoo extends Emale{
}

class Hotmail extends Emale {
  
}

class Notification {
  Gmail gmailService = Gmail();
  Yahoo yahooService = Yahoo();
  Hotmail hotmailService = Hotmail();

  void sendGmail() {
    gmailService.send();
  }

  void sendYahoo() {
    yahooService.send();
  }

  void sendHotmail() {
    hotmailService.send();
  }
}

void main() {
  Notification notification = Notification();
  notification.sendGmail();
  notification.sendYahoo();
  notification.sendHotmail();
}