;; Auto-generated. Do not edit!


(when (boundp 'gopigo3_node::SPI)
  (if (not (find-package "GOPIGO3_NODE"))
    (make-package "GOPIGO3_NODE"))
  (shadow 'SPI (find-package "GOPIGO3_NODE")))
(unless (find-package "GOPIGO3_NODE::SPI")
  (make-package "GOPIGO3_NODE::SPI"))
(unless (find-package "GOPIGO3_NODE::SPIREQUEST")
  (make-package "GOPIGO3_NODE::SPIREQUEST"))
(unless (find-package "GOPIGO3_NODE::SPIRESPONSE")
  (make-package "GOPIGO3_NODE::SPIRESPONSE"))

(in-package "ROS")





(defclass gopigo3_node::SPIRequest
  :super ros::object
  :slots (_data_out ))

(defmethod gopigo3_node::SPIRequest
  (:init
   (&key
    ((:data_out __data_out) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _data_out __data_out)
   self)
  (:data_out
   (&optional __data_out)
   (if __data_out (setq _data_out __data_out)) _data_out)
  (:serialization-length
   ()
   (+
    ;; uint8[] _data_out
    (* 1    (length _data_out)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _data_out
     (write-long (length _data_out) s)
     (princ _data_out s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _data_out
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data_out (make-array n :element-type :char))
     (replace _data_out buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass gopigo3_node::SPIResponse
  :super ros::object
  :slots (_data_in ))

(defmethod gopigo3_node::SPIResponse
  (:init
   (&key
    ((:data_in __data_in) (make-array 0 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _data_in __data_in)
   self)
  (:data_in
   (&optional __data_in)
   (if __data_in (setq _data_in __data_in)) _data_in)
  (:serialization-length
   ()
   (+
    ;; uint8[] _data_in
    (* 1    (length _data_in)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _data_in
     (write-long (length _data_in) s)
     (princ _data_in s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _data_in
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _data_in (make-array n :element-type :char))
     (replace _data_in buf :start2 ptr-) (incf ptr- n))
   ;;
   self)
  )

(defclass gopigo3_node::SPI
  :super ros::object
  :slots ())

(setf (get gopigo3_node::SPI :md5sum-) "e04010cc40eb2ab4db306dc8c290e92b")
(setf (get gopigo3_node::SPI :datatype-) "gopigo3_node/SPI")
(setf (get gopigo3_node::SPI :request) gopigo3_node::SPIRequest)
(setf (get gopigo3_node::SPI :response) gopigo3_node::SPIResponse)

(defmethod gopigo3_node::SPIRequest
  (:response () (instance gopigo3_node::SPIResponse :init)))

(setf (get gopigo3_node::SPIRequest :md5sum-) "e04010cc40eb2ab4db306dc8c290e92b")
(setf (get gopigo3_node::SPIRequest :datatype-) "gopigo3_node/SPIRequest")
(setf (get gopigo3_node::SPIRequest :definition-)
      "uint8[] data_out    # sent byte array
---
uint8[] data_in     # received byte array

")

(setf (get gopigo3_node::SPIResponse :md5sum-) "e04010cc40eb2ab4db306dc8c290e92b")
(setf (get gopigo3_node::SPIResponse :datatype-) "gopigo3_node/SPIResponse")
(setf (get gopigo3_node::SPIResponse :definition-)
      "uint8[] data_out    # sent byte array
---
uint8[] data_in     # received byte array

")



(provide :gopigo3_node/SPI "e04010cc40eb2ab4db306dc8c290e92b")


