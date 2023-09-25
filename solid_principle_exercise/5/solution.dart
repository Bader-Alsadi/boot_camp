/**
 *   Dependency Inversion Principle
 * I isolate the Email to different class
 * and let the ValidateEmail stsic to reach
 *  it from anthor class
 * */

class Email {
  static bool ValidateEmail(String email) {
    return email.contains("@");
  }

  bool SendEmail(String? message) {
    //_smtpClient.Send(message);
    return true;
  }
}

class UserService {
  void Register(String email, String password) {
    if (Email.ValidateEmail(email))
      throw new Exception("Email is not an email");
    //var user = new User(email, password);
    //SendEmail(new MailMessage("mysite@nowhere.com", email) { Subject="HEllo foo" });
  }

  void hashAndSavePassword(String password) {
    hashPassword();
    savePassword();
  }

  void hashPassword() {
    //hashing implementation
  }
  void savePassword() {
    //save to the db
  }
}
