import 'chain_of_responsibility.dart';

void main() {
  Logger consoleLogger = ConsoleLogger(Set.from(LogLevel.values));
  Logger emailLogger = EmailLogger(Set.from([LogLevel.FunctionalMessage, LogLevel.FunctionalError]));
  Logger fileLogger = FileLogger(Set.from([LogLevel.Warning, LogLevel.Error]));

  consoleLogger.next = emailLogger;
  emailLogger.next = fileLogger;

  consoleLogger.log(LogLevel.Debug, 'Some amazingly helpful debug message');
  consoleLogger.log(LogLevel.Info, 'Pretty important information');

  consoleLogger.log(LogLevel.Warning, 'This is a warning!');
  consoleLogger.log(LogLevel.Error, 'AHHHH!');

  consoleLogger.log(LogLevel.FunctionalError, 'This is not a show stopper');
  consoleLogger.log(LogLevel.FunctionalMessage, 'This is basically just info');
}
