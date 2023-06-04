; Auto-generated. Do not edit!


(cl:in-package servicetest-srv)


;//! \htmlinclude hjh-request.msg.html

(cl:defclass <hjh-request> (roslisp-msg-protocol:ros-message)
  ((age
    :reader age
    :initarg :age
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (school
    :reader school
    :initarg :school
    :type cl:string
    :initform ""))
)

(cl:defclass hjh-request (<hjh-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hjh-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hjh-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servicetest-srv:<hjh-request> is deprecated: use servicetest-srv:hjh-request instead.")))

(cl:ensure-generic-function 'age-val :lambda-list '(m))
(cl:defmethod age-val ((m <hjh-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servicetest-srv:age-val is deprecated.  Use servicetest-srv:age instead.")
  (age m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <hjh-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servicetest-srv:name-val is deprecated.  Use servicetest-srv:name instead.")
  (name m))

(cl:ensure-generic-function 'school-val :lambda-list '(m))
(cl:defmethod school-val ((m <hjh-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servicetest-srv:school-val is deprecated.  Use servicetest-srv:school instead.")
  (school m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hjh-request>) ostream)
  "Serializes a message object of type '<hjh-request>"
  (cl:let* ((signed (cl:slot-value msg 'age)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'school))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'school))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hjh-request>) istream)
  "Deserializes a message object of type '<hjh-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'age) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'school) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'school) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<hjh-request>)))
  "Returns string type for a service object of type '<hjh-request>"
  "servicetest/hjhRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hjh-request)))
  "Returns string type for a service object of type 'hjh-request"
  "servicetest/hjhRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<hjh-request>)))
  "Returns md5sum for a message object of type '<hjh-request>"
  "4ea70316ac12589c73d4bd02fe66905f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hjh-request)))
  "Returns md5sum for a message object of type 'hjh-request"
  "4ea70316ac12589c73d4bd02fe66905f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hjh-request>)))
  "Returns full string definition for message of type '<hjh-request>"
  (cl:format cl:nil "~%int16 age~%string name~%string school~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hjh-request)))
  "Returns full string definition for message of type 'hjh-request"
  (cl:format cl:nil "~%int16 age~%string name~%string school~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hjh-request>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:length (cl:slot-value msg 'school))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hjh-request>))
  "Converts a ROS message object to a list"
  (cl:list 'hjh-request
    (cl:cons ':age (age msg))
    (cl:cons ':name (name msg))
    (cl:cons ':school (school msg))
))
;//! \htmlinclude hjh-response.msg.html

(cl:defclass <hjh-response> (roslisp-msg-protocol:ros-message)
  ((memory
    :reader memory
    :initarg :memory
    :type cl:string
    :initform ""))
)

(cl:defclass hjh-response (<hjh-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <hjh-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'hjh-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name servicetest-srv:<hjh-response> is deprecated: use servicetest-srv:hjh-response instead.")))

(cl:ensure-generic-function 'memory-val :lambda-list '(m))
(cl:defmethod memory-val ((m <hjh-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader servicetest-srv:memory-val is deprecated.  Use servicetest-srv:memory instead.")
  (memory m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <hjh-response>) ostream)
  "Serializes a message object of type '<hjh-response>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'memory))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'memory))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <hjh-response>) istream)
  "Deserializes a message object of type '<hjh-response>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'memory) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'memory) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<hjh-response>)))
  "Returns string type for a service object of type '<hjh-response>"
  "servicetest/hjhResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hjh-response)))
  "Returns string type for a service object of type 'hjh-response"
  "servicetest/hjhResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<hjh-response>)))
  "Returns md5sum for a message object of type '<hjh-response>"
  "4ea70316ac12589c73d4bd02fe66905f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'hjh-response)))
  "Returns md5sum for a message object of type 'hjh-response"
  "4ea70316ac12589c73d4bd02fe66905f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<hjh-response>)))
  "Returns full string definition for message of type '<hjh-response>"
  (cl:format cl:nil "~%string memory~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'hjh-response)))
  "Returns full string definition for message of type 'hjh-response"
  (cl:format cl:nil "~%string memory~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <hjh-response>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'memory))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <hjh-response>))
  "Converts a ROS message object to a list"
  (cl:list 'hjh-response
    (cl:cons ':memory (memory msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'hjh)))
  'hjh-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'hjh)))
  'hjh-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'hjh)))
  "Returns string type for a service object of type '<hjh>"
  "servicetest/hjh")