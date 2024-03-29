use inc::Module::Install;

name     'PSPP';
all_from 'lib/PSPP.pm';

requires 'IPC::Run';
requires 'Text::CSV_XS';
requires 'File::Temp';
requires 'Cwd';
requires 'Carp';
requires_external_bin 'pspp';
build_requires 'Test::More';
test_requires 'File::Spec';

no_index directory => 'examples';

WriteAll;

