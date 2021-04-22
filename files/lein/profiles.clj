{:ppedn {:dependencies [[org.clojure/clojure "1.9.0"]
                        [mvxcvi/puget "0.8.0"]]}
 :user {:dependencies [[hashp "0.1.1"]
                       [criterium "0.4.6"]]
        :injections [(require 'hashp.core)
                     (require '[criterium.core :as cr])
                     (defmethod print-method clojure.lang.IPersistentMap [m, ^java.io.Writer w]
                       (#'clojure.core/print-meta m w)
                       (#'clojure.core/print-map m #'clojure.core/pr-on w))
                     (defmethod clojure.pprint/simple-dispatch clojure.lang.IPersistentMap
                       [m]
                       (with-redefs [clojure.core/lift-ns (constantly nil)]
                         (#'clojure.pprint/pprint-map m)))]}}
