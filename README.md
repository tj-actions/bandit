[![CI](https://github.com/tj-actions/bandit/workflows/CI/badge.svg)](https://github.com/tj-actions/bandit/actions?query=workflow%3ACI)  [![Update release version](https://github.com/tj-actions/bandit/workflows/Update%20release%20version/badge.svg)](https://github.com/tj-actions/bandit/actions?query=workflow%3A%22Update+release+version%22)

bandit
------

[bandit](https://github.com/PyCQA/bandit) is a security linter from PyCQA

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Run bandit
        uses: tj-actions/bandit@v1.2
        with:
          bandit_version: "1.7.0"
          path: "."
          options: "-r"
```


## Inputs

|   Input       |    type    |  required     |  default                      |  description  |
|:-------------:|:-----------:|:-------------:|:----------------------------:|:-------------:|
| bandit-version |  `string`   |    `true`    | `1.7.0`                      | Bandit version to be installed  |
| path |  `string`   |    `true`    | `.`                      | Location to run bandit checks  |
| options |  `string`   |    `true`    | `-r`                      | Extra options ([possible choices](https://github.com/PyCQA/bandit#usage))  |



* Free software: [MIT license](LICENSE)

Features
--------

* TODO


Credits
-------

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter).



Report Bugs
-----------

Report bugs at https://github.com/tj-actions/bandit/issues.

If you are reporting a bug, please include:

* Your operating system name and version.
* Any details about your workflow that might be helpful in troubleshooting.
* Detailed steps to reproduce the bug.
