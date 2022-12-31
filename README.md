[![Codacy Badge](https://api.codacy.com/project/badge/Grade/54e8fe5beafd46a5bbbc5ae5964e02f3)](https://app.codacy.com/gh/tj-actions/bandit?utm_source=github.com\&utm_medium=referral\&utm_content=tj-actions/bandit\&utm_campaign=Badge_Grade_Settings)
[![CI](https://github.com/tj-actions/bandit/workflows/CI/badge.svg)](https://github.com/tj-actions/bandit/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/bandit/workflows/Update%20release%20version./badge.svg)](https://github.com/tj-actions/bandit/actions?query=workflow%3A%22Update+release+version.%22)
[![Public workflows that use this action.](https://img.shields.io/endpoint?url=https%3A%2F%2Fused-by.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fbandit%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+bandit+language%3AYAML\&s=\&type=Code)

[![Ubuntu](https://img.shields.io/badge/Ubuntu-E95420?logo=ubuntu\&logoColor=white)](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idruns-on)

<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->

[![All Contributors](https://img.shields.io/badge/all_contributors-1-orange.svg?style=flat-square)](#contributors-)

<!-- ALL-CONTRIBUTORS-BADGE:END -->

## bandit

[bandit](https://github.com/PyCQA/bandit) is a security linter from [PyCQA](https://github.com/PyCQA?type=source)

## Usage

**Minimal version**

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Run bandit
        uses: tj-actions/bandit@v5.1
```

**Using inputs**

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Run bandit
        uses: tj-actions/bandit@v5.1
        with:
          targets: |  # or a single string "." 
            test_package
          options: "-r"
```

If you feel generous and want to show some extra appreciation:

Support this project with a :star:

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

[buymeacoffee]: https://www.buymeacoffee.com/jackton1

[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png

## Inputs

<!-- AUTO-DOC-INPUT:START - Do not remove or modify this section -->

|  INPUT  |  TYPE  | REQUIRED | DEFAULT |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               DESCRIPTION                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
|---------|--------|----------|---------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| options | string |  false   | `"-r"`  | optional arguments: -h, --help show this<br> help message and exit -r, --recursive<br> find and process files in subdirectories<br> -a {file,vuln}, --aggregate {file,vuln} aggregate output<br> by vulnerability (default) or by filename<br> -n CONTEXT\_LINES, --number CONTEXT\_LINES maximum number<br> of code lines to output for<br> each issue -c CONFIG\_FILE, --configfile CONFIG\_FILE<br> optional config file to use for<br> selecting plugins and overriding defaults -p<br> PROFILE, --profile PROFILE profile to use<br> (defaults to executing all tests) -t<br> TESTS, --tests TESTS comma-separated list of<br> test IDs to run -s SKIPS,<br> --skip SKIPS comma-separated list of test<br> IDs to skip -l, --level report<br> only issues of a given severity<br> level or higher (-l for LOW,<br> -ll for MEDIUM, -lll for HIGH)<br> -i, --confidence report only issues of<br> a given confidence level or higher<br> (-i for LOW, -ii for MEDIUM,<br> -iii for HIGH) -f {csv,custom,html,json,screen,txt,xml,yaml},  |
|         |        |          |         |  --format<br> {csv,custom,html,json,screen,txt,xml,yaml} specify output format --msg-template MSG\_TEMPLATE<br> specify output message template (only usable<br> with --format custom), see CUSTOM FORMAT<br> section for list of available values<br> -o \[OUTPUT\_FILE], --output \[OUTPUT\_FILE] write report<br> to filename -v, --verbose output extra<br> information like excluded and included files<br> -d, --debug turn on debug mode<br> -q, --quiet, --silent only show output<br> in the case of an error<br> --ignore-nosec do not skip lines with<br> # nosec comments -x EXCLUDED\_PATHS, --exclude<br> EXCLUDED\_PATHS comma-separated list of paths (glob<br> patterns supported) to exclude from scan<br> (note that these are in addition<br> to the excluded paths provided in<br> the config file) (default: .svn,CVS,.bzr,.hg,.git,**pycache**,.tox,.eggs,\*.egg) -b<br> BASELINE, --baseline BASELINE path of a<br> baseline report to compare against (only<br> JSON-formatted files are accepted) --ini INI\_PATH<br>   |
|         |        |          |         |                                                                                                                                                                                                                                                                                                                                                                                                                               path to a .bandit file that<br> supplies command line arguments --exit-zero exit<br> with 0, even with results found<br> --version show program's version number and<br>exit                                                                                                                                                                                                                                                                                                                                                                                                                               |
| targets | string |   true   |  `"."`  |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                Module(s)/Package(s) to run bandit checks                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |

<!-- AUTO-DOC-INPUT:END -->

|   Input       |    type    |  required     |  default                      |  description  |
|:-------------:|:-----------:|:-------------:|:----------------------------:|:-------------:|
| targets |  `string[] or string`   |    `true`    | `.`                      | Targets to run bandit checks  |
| options |  `string`   |    `true`    | `-r`                      | Extra options ([possible choices](https://github.com/tj-actions/bandit/blob/main/action.yml#L13))  |

## Example

![Screen Shot 2021-09-05 at 8 59 35 PM](https://user-images.githubusercontent.com/17484350/132146947-1794341e-da4d-485c-b011-abb008df8f14.png)

*   Free software: [MIT license](LICENSE)

## Credits

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter).

## Report Bugs

Report bugs at https://github.com/tj-actions/bandit/issues.

If you are reporting a bug, please include:

*   Your operating system name and version.
*   Any details about your workflow that might be helpful in troubleshooting.
*   Detailed steps to reproduce the bug.

# TODO

*   \[ ] Add support for running action on [![Windows](https://img.shields.io/badge/Windows-0078D6?logo=windows\&logoColor=white)](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idruns-on), [![Mac OS](https://img.shields.io/badge/mac%20os-000000?logo=macos\&logoColor=F0F0F0)](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idruns-on)

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->

<!-- prettier-ignore-start -->

<!-- markdownlint-disable -->

<table>
  <tr>
    <td align="center"><a href="https://nuagelab.com"><img src="https://avatars.githubusercontent.com/u/4560307?v=4?s=100" width="100px;" alt=""/><br /><sub><b>tlacroix</b></sub></a><br /><a href="https://github.com/tj-actions/bandit/commits?author=tlacroix" title="Code">💻</a></td>
  </tr>
</table>

<!-- markdownlint-restore -->

<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
