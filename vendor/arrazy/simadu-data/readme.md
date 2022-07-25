# Simadu Data

*By [arrazymuhammad](https://github.com/arrazymuhammad/)*


Simadu Data is a Simadu Public Data Synchronizer for Internal Laravel Project Use

## Installation

Use [Composer](https://getcomposer.org/) to install the library. Also make sure you have installed and configured the [Laravel](https://laravel.com) project.

```shell
composer install arrazy/simadu-data
```

Publish database migration to your local database with the publish command:
```shell
php artisan vendor:publish --provider="Razy\SimaduData\ServiceProvider"
```
## Usage

Run Synchronizer Data using command:

```bash
php artisan simadu-data:sync
```


Please confirm that table named 'simadu__pegawai' has been created on your local databases, and class SimaduPegawai has been created on your Model.


## License
[MIT](https://choosealicense.com/licenses/mit/)
