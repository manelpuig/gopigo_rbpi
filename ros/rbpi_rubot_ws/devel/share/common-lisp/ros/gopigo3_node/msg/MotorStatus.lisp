; Auto-generated. Do not edit!


(cl:in-package gopigo3_node-msg)


;//! \htmlinclude MotorStatus.msg.html

(cl:defclass <MotorStatus> (roslisp-msg-protocol:ros-message)
  ((low_voltage
    :reader low_voltage
    :initarg :low_voltage
    :type cl:boolean
    :initform cl:nil)
   (overloaded
    :reader overloaded
    :initarg :overloaded
    :type cl:boolean
    :initform cl:nil)
   (power
    :reader power
    :initarg :power
    :type cl:fixnum
    :initform 0)
   (encoder
    :reader encoder
    :initarg :encoder
    :type cl:float
    :initform 0.0)
   (speed
    :reader speed
    :initarg :speed
    :type cl:float
    :initform 0.0))
)

(cl:defclass MotorStatus (<MotorStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gopigo3_node-msg:<MotorStatus> is deprecated: use gopigo3_node-msg:MotorStatus instead.")))

(cl:ensure-generic-function 'low_voltage-val :lambda-list '(m))
(cl:defmethod low_voltage-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gopigo3_node-msg:low_voltage-val is deprecated.  Use gopigo3_node-msg:low_voltage instead.")
  (low_voltage m))

(cl:ensure-generic-function 'overloaded-val :lambda-list '(m))
(cl:defmethod overloaded-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gopigo3_node-msg:overloaded-val is deprecated.  Use gopigo3_node-msg:overloaded instead.")
  (overloaded m))

(cl:ensure-generic-function 'power-val :lambda-list '(m))
(cl:defmethod power-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gopigo3_node-msg:power-val is deprecated.  Use gopigo3_node-msg:power instead.")
  (power m))

(cl:ensure-generic-function 'encoder-val :lambda-list '(m))
(cl:defmethod encoder-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gopigo3_node-msg:encoder-val is deprecated.  Use gopigo3_node-msg:encoder instead.")
  (encoder m))

(cl:ensure-generic-function 'speed-val :lambda-list '(m))
(cl:defmethod speed-val ((m <MotorStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gopigo3_node-msg:speed-val is deprecated.  Use gopigo3_node-msg:speed instead.")
  (speed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorStatus>) ostream)
  "Serializes a message object of type '<MotorStatus>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'low_voltage) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'overloaded) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'power)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'encoder))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'speed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorStatus>) istream)
  "Deserializes a message object of type '<MotorStatus>"
    (cl:setf (cl:slot-value msg 'low_voltage) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'overloaded) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'power) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'encoder) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'speed) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorStatus>)))
  "Returns string type for a message object of type '<MotorStatus>"
  "gopigo3_node/MotorStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorStatus)))
  "Returns string type for a message object of type 'MotorStatus"
  "gopigo3_node/MotorStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorStatus>)))
  "Returns md5sum for a message object of type '<MotorStatus>"
  "fa9d221cf281ffba79b583b9dd588c6f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorStatus)))
  "Returns md5sum for a message object of type 'MotorStatus"
  "fa9d221cf281ffba79b583b9dd588c6f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorStatus>)))
  "Returns full string definition for message of type '<MotorStatus>"
  (cl:format cl:nil "bool low_voltage~%bool overloaded~%int8 power      # PWM duty cycle -100 ... 100~%float32 encoder # degree~%float32 speed   # degree per second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorStatus)))
  "Returns full string definition for message of type 'MotorStatus"
  (cl:format cl:nil "bool low_voltage~%bool overloaded~%int8 power      # PWM duty cycle -100 ... 100~%float32 encoder # degree~%float32 speed   # degree per second~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorStatus>))
  (cl:+ 0
     1
     1
     1
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorStatus
    (cl:cons ':low_voltage (low_voltage msg))
    (cl:cons ':overloaded (overloaded msg))
    (cl:cons ':power (power msg))
    (cl:cons ':encoder (encoder msg))
    (cl:cons ':speed (speed msg))
))
