; Auto-generated. Do not edit!


(cl:in-package basic_test-srv)


;//! \htmlinclude basic-request.msg.html

(cl:defclass <basic-request> (roslisp-msg-protocol:ros-message)
  ((A
    :reader A
    :initarg :A
    :type cl:integer
    :initform 0)
   (B
    :reader B
    :initarg :B
    :type cl:integer
    :initform 0)
   (C
    :reader C
    :initarg :C
    :type cl:integer
    :initform 0))
)

(cl:defclass basic-request (<basic-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <basic-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'basic-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name basic_test-srv:<basic-request> is deprecated: use basic_test-srv:basic-request instead.")))

(cl:ensure-generic-function 'A-val :lambda-list '(m))
(cl:defmethod A-val ((m <basic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basic_test-srv:A-val is deprecated.  Use basic_test-srv:A instead.")
  (A m))

(cl:ensure-generic-function 'B-val :lambda-list '(m))
(cl:defmethod B-val ((m <basic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basic_test-srv:B-val is deprecated.  Use basic_test-srv:B instead.")
  (B m))

(cl:ensure-generic-function 'C-val :lambda-list '(m))
(cl:defmethod C-val ((m <basic-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basic_test-srv:C-val is deprecated.  Use basic_test-srv:C instead.")
  (C m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <basic-request>) ostream)
  "Serializes a message object of type '<basic-request>"
  (cl:let* ((signed (cl:slot-value msg 'A)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'B)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'C)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <basic-request>) istream)
  "Deserializes a message object of type '<basic-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'A) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'B) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'C) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<basic-request>)))
  "Returns string type for a service object of type '<basic-request>"
  "basic_test/basicRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'basic-request)))
  "Returns string type for a service object of type 'basic-request"
  "basic_test/basicRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<basic-request>)))
  "Returns md5sum for a message object of type '<basic-request>"
  "2a5c7a37218262bae4fcfaa1007692aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'basic-request)))
  "Returns md5sum for a message object of type 'basic-request"
  "2a5c7a37218262bae4fcfaa1007692aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<basic-request>)))
  "Returns full string definition for message of type '<basic-request>"
  (cl:format cl:nil "int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'basic-request)))
  "Returns full string definition for message of type 'basic-request"
  (cl:format cl:nil "int32 A~%int32 B~%int32 C~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <basic-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <basic-request>))
  "Converts a ROS message object to a list"
  (cl:list 'basic-request
    (cl:cons ':A (A msg))
    (cl:cons ':B (B msg))
    (cl:cons ':C (C msg))
))
;//! \htmlinclude basic-response.msg.html

(cl:defclass <basic-response> (roslisp-msg-protocol:ros-message)
  ((sum
    :reader sum
    :initarg :sum
    :type cl:integer
    :initform 0))
)

(cl:defclass basic-response (<basic-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <basic-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'basic-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name basic_test-srv:<basic-response> is deprecated: use basic_test-srv:basic-response instead.")))

(cl:ensure-generic-function 'sum-val :lambda-list '(m))
(cl:defmethod sum-val ((m <basic-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader basic_test-srv:sum-val is deprecated.  Use basic_test-srv:sum instead.")
  (sum m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <basic-response>) ostream)
  "Serializes a message object of type '<basic-response>"
  (cl:let* ((signed (cl:slot-value msg 'sum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <basic-response>) istream)
  "Deserializes a message object of type '<basic-response>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'sum) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<basic-response>)))
  "Returns string type for a service object of type '<basic-response>"
  "basic_test/basicResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'basic-response)))
  "Returns string type for a service object of type 'basic-response"
  "basic_test/basicResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<basic-response>)))
  "Returns md5sum for a message object of type '<basic-response>"
  "2a5c7a37218262bae4fcfaa1007692aa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'basic-response)))
  "Returns md5sum for a message object of type 'basic-response"
  "2a5c7a37218262bae4fcfaa1007692aa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<basic-response>)))
  "Returns full string definition for message of type '<basic-response>"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'basic-response)))
  "Returns full string definition for message of type 'basic-response"
  (cl:format cl:nil "int32 sum~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <basic-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <basic-response>))
  "Converts a ROS message object to a list"
  (cl:list 'basic-response
    (cl:cons ':sum (sum msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'basic)))
  'basic-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'basic)))
  'basic-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'basic)))
  "Returns string type for a service object of type '<basic>"
  "basic_test/basic")