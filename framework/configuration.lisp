(in-package :mu-cl-resources)


(defparameter *camelcase-json-variables* nil
  "when non-nil, json variable names should be camelcased, rather than dasherized.")
(defparameter *verify-accept-header* nil
  "when non-nil, the application/vndi+json ACCEPT header is checked.")

(defparameter *application-graph*
  (s-url (or (uiop:getenv "MU_APPLICATION_GRAPH")
             "http://mu.semte.ch/application"))
  "standard graph for all sparql queries.")

(defparameter *default-page-size*
  (handler-case
      (parse-integer (uiop:getenv "MU_DEFAULT_PAGE_SIZE"))
    (error () 20))
  "default amount of items in a single page of results.")
