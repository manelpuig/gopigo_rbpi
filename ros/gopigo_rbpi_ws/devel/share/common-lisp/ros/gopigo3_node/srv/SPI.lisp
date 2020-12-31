; Auto-generated. Do not edit!


(cl:in-package gopigo3_node-srv)


;//! \htmlinclude SPI-request.msg.html

(cl:defclass <SPI-request> (roslisp-msg-protocol:ros-message)
  ((data_out
    :reader data_out
    :initarg :data_out
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SPI-request (<SPI-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SPI-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SPI-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gopigo3_node-srv:<SPI-request> is deprecated: use gopigo3_node-srv:SPI-request instead.")))

(cl:ensure-generic-function 'data_out-val :lambda-list '(m))
(cl:defmethod data_out-val ((m <SPI-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gopigo3_node-srv:data_out-val is deprecated.  Use gopigo3_node-srv:data_out instead.")
  (data_out m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SPI-request>) ostream)
  "Serializes a message object of type '<SPI-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data_out))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data_out))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SPI-request>) istream)
  "Deserializes a message object of type '<SPI-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data_out) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data_out)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SPI-request>)))
  "Returns string type for a service object of type '<SPI-request>"
  "gopigo3_node/SPIRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SPI-request)))
  "Returns string type for a service object of type 'SPI-request"
  "gopigo3_node/SPIRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SPI-request>)))
  "Returns md5sum for a message object of type '<SPI-request>"
  "e04010cc40eb2ab4db306dc8c290e92b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SPI-request)))
  "Returns md5sum for a message object of type 'SPI-request"
  "e04010cc40eb2ab4db306dc8c290e92b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SPI-request>)))
  "Returns full string definition for message of type '<SPI-request>"
  (cl:format cl:nil "uint8[] data_out    # sent byte array~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SPI-request)))
  "Returns full string definition for message of type 'SPI-request"
  (cl:format cl:nil "uint8[] data_out    # sent byte array~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SPI-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data_out) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SPI-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SPI-request
    (cl:cons ':data_out (data_out msg))
))
;//! \htmlinclude SPI-response.msg.html

(cl:defclass <SPI-response> (roslisp-msg-protocol:ros-message)
  ((data_in
    :reader data_in
    :initarg :data_in
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SPI-response (<SPI-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SPI-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SPI-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name gopigo3_node-srv:<SPI-response> is deprecated: use gopigo3_node-srv:SPI-response instead.")))

(cl:ensure-generic-function 'data_in-val :lambda-list '(m))
(cl:defmethod data_in-val ((m <SPI-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader gopigo3_node-srv:data_in-val is deprecated.  Use gopigo3_node-srv:data_in instead.")
  (data_in m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SPI-response>) ostream)
  "Serializes a message object of type '<SPI-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'data_in))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data_in))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SPI-response>) istream)
  "Deserializes a message object of type '<SPI-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'data_in) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'data_in)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SPI-response>)))
  "Returns string type for a service object of type '<SPI-response>"
  "gopigo3_node/SPIResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SPI-response)))
  "Returns string type for a service object of type 'SPI-response"
  "gopigo3_node/SPIResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SPI-response>)))
  "Returns md5sum for a message object of type '<SPI-response>"
  "e04010cc40eb2ab4db306dc8c290e92b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SPI-response)))
  "Returns md5sum for a message object of type 'SPI-response"
  "e04010cc40eb2ab4db306dc8c290e92b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SPI-response>)))
  "Returns full string definition for message of type '<SPI-response>"
  (cl:format cl:nil "uint8[] data_in     # received byte array~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SPI-response)))
  "Returns full string definition for message of type 'SPI-response"
  (cl:format cl:nil "uint8[] data_in     # received byte array~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SPI-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'data_in) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SPI-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SPI-response
    (cl:cons ':data_in (data_in msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SPI)))
  'SPI-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SPI)))
  'SPI-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SPI)))
  "Returns string type for a service object of type '<SPI>"
  "gopigo3_node/SPI")