[![CI](https://github.com/tj-actions/bandit/workflows/CI/badge.svg)](https://github.com/tj-actions/bandit/actions?query=workflow%3ACI)
[![Update release version.](https://github.com/tj-actions/bandit/workflows/Update%20release%20version./badge.svg)](https://github.com/tj-actions/bandit/actions?query=workflow%3A%22Update+release+version.%22)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/a1285ea955d346f9a37355933835aabd)](https://app.codacy.com/gh/tj-actions/bandit?utm_source=github.com\&utm_medium=referral\&utm_content=tj-actions/bandit\&utm_campaign=Badge_Grade_Settings)
[![Public workflows that use this action.](https://img.shields.io/endpoint?url=https%3A%2F%2Fapi-tj-actions1.vercel.app%2Fapi%2Fgithub-actions%2Fused-by%3Faction%3Dtj-actions%2Fbandit%26badge%3Dtrue)](https://github.com/search?o=desc\&q=tj-actions+bandit+language%3AYAML\&s=\&type=Code)

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
        uses: tj-actions/bandit@v5
```

**Using inputs**

```yaml
...
    steps:
      - uses: actions/checkout@v2
      - name: Run bandit
        uses: tj-actions/bandit@v5
        with:
          targets: |  # or a single string "." 
            test_package
          options: "-r"
```

## Inputs

|   Input       |    type    |  required     |  default                      |  description  |
|:-------------:|:-----------:|:-------------:|:----------------------------:|:-------------:|
| targets |  `string[] or string`   |    `true`    | `.`                      | Targets to run bandit checks  |
| options |  `string`   |    `true`    | `-r`                      | Extra options ([possible choices](https://github.com/tj-actions/bandit/blob/main/action.yml#L13))  |

## Example

![Screen Shot 2021-09-05 at 8 59 35 PM](https://user-images.githubusercontent.com/17484350/132146947-1794341e-da4d-485c-b011-abb008df8f14.png)

*   Free software: [MIT license](LICENSE)

If you feel generous and want to show some extra appreciation:

[![Buy me a coffee][buymeacoffee-shield]][buymeacoffee]

[buymeacoffee]: https://www.buymeacoffee.com/jackton1

[buymeacoffee-shield]: https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png

## Credits

This package was created with [Cookiecutter](https://github.com/cookiecutter/cookiecutter).

## Report Bugs

Report bugs at https://github.com/tj-actions/bandit/issues.

If you are reporting a bug, please include:

*   Your operating system name and version.
*   Any details about your workflow that might be helpful in troubleshooting.
*   Detailed steps to reproduce the bug.

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
