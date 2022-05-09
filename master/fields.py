from django.db.models import JSONField
# from jsonfield import JSONField

SHORT_ID                    = 2
SHORT_LENGTH                = 4
MAX_SHORT_ID                = 8
MAX_LENGTH_SHORT_NAME       = 16
MAX_LENGTH_NAME             = 32
MAX_LENGTH_LONG_NAME        = 64
MAX_LENGTH_ID               = 64
MAX_LENGTH_URL              = 255
MAX_LENGTH_MSG              = 255
MAX_LENGTH_ADDRESS          = 255
MAX_LENGTH_LONG_URL         = 1024
MAX_LENGTH_DETAIL           = 2048

User_Status =[
    ('active','Active'),
    ('inactive','Inactive'),
    ('deleted','Deleted'),
]

Payment_Status =[
    ('pending','Pending'),
    ('failed','Failed'),
    ('success','Success'),
]

Permanent_resident_card = [
    ('yes','Yes'),
    ('no','NO'),
]

Physical_Address = [
    ('yes','Yes'),
    ('no','NO'),
]
GenderData = [
    ('male','Male'),
    ('female','Female'),
]
ADJ_INTERVIEW = [
    ('yes','Yes'),
    ('no','NO'),
    ("I Don't Know","I Don't Know"),
]

PhysProcessing_Information = [
    ('yes','Yes'),
    ('no','NO'),
]

Interpreter_PrepareIn_formation = [
    ('yes','Yes'),
    ('no','NO'),
]

Accomidations = [
    ('yes','Yes'),
    ('no','NO'),
]