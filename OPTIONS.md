## Bandit Options

```bash
  -h, --help            show this help message and exit
  
  -r, --recursive       find and process files in subdirectories
  
  -a {file,vuln}, --aggregate {file,vuln}
                        aggregate output by vulnerability (default) or by filename
                        
  -n CONTEXT_LINES, --number CONTEXT_LINES
                        maximum number of code lines to output for each issue
                        
  -c CONFIG_FILE, --configfile CONFIG_FILE
                        optional config file to use for selecting plugins and overriding defaults
                        
  -p PROFILE, --profile PROFILE
                        profile to use (defaults to executing all tests)
                        
  -t TESTS, --tests TESTS
                        comma-separated list of test IDs to run
                        
  -s SKIPS, --skip SKIPS
                        comma-separated list of test IDs to skip
                        
  -l, --level           report only issues of a given severity level or higher (-l for LOW, -ll for MEDIUM, -lll for HIGH)
  
  --severity-level {all,low,medium,high}
                        report only issues of a given severity level or higher. 
                        "all" and "low" are likely to produce the same results, 
                        but it is possible for rules to be undefined which will not be listed in "low".
                        
  -i, --confidence      report only issues of a given confidence level or higher 
                        (-i for LOW, -ii for MEDIUM, -iii for HIGH)
                        
  --confidence-level {all,low,medium,high}
                        report only issues of a given confidence level or higher. 
                        "all" and "low" are likely to produce the same results, 
                        but it is possible for rules to be undefined which will not be listed in "low".
                        
  -f {csv,custom,html,json,screen,txt,xml,yaml}, --format {csv,custom,html,json,screen,txt,xml,yaml}
                        specify output format
                        
  --msg-template MSG_TEMPLATE
                        specify output message template (only usable with --format custom), 
                        see CUSTOM FORMAT section for list of available values
                        
  -o [OUTPUT_FILE], --output [OUTPUT_FILE] 
                        write report to filename
  
  -v, --verbose         output extra information like excluded and included files
  
  -d, --debug           turn on debug mode
  
  -q, --quiet, --silent
                        only show output in the case of an error

  --ignore-nosec        do not skip lines with # nosec comments

  -x EXCLUDED_PATHS, --exclude EXCLUDED_PATHS
                        comma-separated list of paths 
                        (glob patterns supported) to exclude from scan 
                        (note that these are in addition to the excluded paths provided in the config file) 
                        (default: .svn,CVS,.bzr,.hg,.git,__pycache__,.tox,.eggs,*.egg)

  -b BASELINE, --baseline BASELINE
                        path of a baseline report to compare against (only JSON-formatted files are accepted)

  --ini INI_PATH        path to a .bandit file that supplies command line arguments
  --exit-zero           exit with 0, even with results found
  --version             show program's version number and exit

```
