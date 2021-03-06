#!/usr/bin/env bash
function extend_help {
  cat <<EOM
 Randomz - GPLv3 Shadowbq, 2012. Based on GNU derived work. 
 
 Execution:
 
   randomz [RANDOMCONTROLS] [GENERICOPTIONS] [RUNTIMEOPTIONS] \$ARGS
 
 Notes:
   Randomz is based on \$RANDOM and is truely cross platform. It does not depend on any other languages
   present other than BASH v3.x or above. Randomz is SLOW, so COMPLEX Randomz is REALLY SLOW. Dont complain.  

 Random controls:
   -z        # Seed before execution (IMPORTANT for \$RANDOM)
          - Default is to not reseed before every execution
 Generic options:
   -e          # Suppress new line
   
 Runtime options:
   -b          # Generate binary choice, that is, "true" or "false"
   -A          # Print a single UPPERCASE English letter
   -a          # Print a single lowercase English letter
   -i          # Print an \$RANDOM integer from 0 to 9 
   -x          # Print an \$RANDOM integer from 0 to 100 
   -n          # Print an \$RANDOM integer from 0 to 32764 
   -r '\$min \$max \$divisible'  # Print an integer from \$min to \$max divisable by \$divisable
   -u         # Print a large /dev/urandom integer
   -U \$max      # Print a /dev/urandom integer below \$max
   -l \$filename      # Print a random line from a file 
   -s         # Shuffle lines of STDIN to STDOUT
   -L         # Generate stream of Lorum Ipsum random text 

 Complex Execution:

  Generate 5 lower case english letters
    for i in {1..5}; do echo -n \`./randomz -zea\`; done

  Generate Random length character strings < 100 in length
    for ((c=1; c<=\$(./randomz -zex); c++)); do echo -n \$(./randomz -zea); done

  Generate Random length number from 0 to 1x10^32764  
    for ((c=1; c<=\$(./randomz -zen); c++)); do echo -n \$(./randomz -zei); done
     
  Create Lorum Ipsum document
    ./randomz -L > /Lorum_ipsum.txt (break)
    
  Randomize (shuffle) the lines of an input file
    cat foo | ./randomz -s 

EOM
}
