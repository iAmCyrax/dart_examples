enum LogLevel {
  None,
  Info,
  Debug,
  Warning,
  Error,
  FunctionalMessage,
  FunctionalError,
}

abstract class Logger {
  Set<LogLevel> levels;
  Logger? _next;

  Logger(this.levels);

  bool get universal => levels.containsAll(LogLevel.values);
  void set next(Logger nextLogger) => _next = nextLogger;

  void addLevel(LogLevel level) => levels.add(level);

  void log(LogLevel level, String msg) {
    if (levels.contains(level) || universal) {
      write_message(msg);
    }
    _next?.log(level, msg);
  }

  void write_message(String msg);
}

class ConsoleLogger extends Logger {
  ConsoleLogger(super.levels);

  @override
  void write_message(String msg) => print('[Console]: $msg');
}

class EmailLogger extends Logger {
  EmailLogger(super.levels);

  @override
  void write_message(String msg) => print('[Email]: $msg');
}

class FileLogger extends Logger {
  FileLogger(super.levels);

  @override
  void write_message(String msg) => print('[File]: $msg');
}