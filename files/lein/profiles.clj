{:user {:dependencies [[pjstadig/humane-test-output "0.11.0"]
                       [hashp "0.2.1"]]
        :injections [(require 'hashp.core)
                     (require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)]}}
