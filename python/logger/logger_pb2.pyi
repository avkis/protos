from google.protobuf import descriptor as _descriptor
from google.protobuf import message as _message
from typing import ClassVar as _ClassVar, Mapping as _Mapping, Optional as _Optional, Union as _Union

DESCRIPTOR: _descriptor.FileDescriptor

class Log(_message.Message):
    __slots__ = ("name", "data")
    NAME_FIELD_NUMBER: _ClassVar[int]
    DATA_FIELD_NUMBER: _ClassVar[int]
    name: str
    data: str
    def __init__(self, name: _Optional[str] = ..., data: _Optional[str] = ...) -> None: ...

class LogRequest(_message.Message):
    __slots__ = ("logEntry",)
    LOGENTRY_FIELD_NUMBER: _ClassVar[int]
    logEntry: Log
    def __init__(self, logEntry: _Optional[_Union[Log, _Mapping]] = ...) -> None: ...

class LogResponse(_message.Message):
    __slots__ = ("result",)
    RESULT_FIELD_NUMBER: _ClassVar[int]
    result: str
    def __init__(self, result: _Optional[str] = ...) -> None: ...
