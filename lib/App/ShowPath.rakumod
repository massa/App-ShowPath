unit module App::ShowPath;

=begin pod

=head1 NAME

App::ShowPath - show the contents of the environment variable $PATH, in a browseable table form

=head1 SYNOPSIS

=begin code :lang<bash>

$ showpath

=end code

=head1 DESCRIPTION

App::ShowPath is a simple script to show the contents of $PATH via Term::TablePrint;

=head1 AUTHOR

Humberto Massa `humbertomassa@gmail.com`

=head1 COPYRIGHT AND LICENSE

Copyright © 2024 Humberto Massa

This library is free software; you can redistribute it and/or modify it under either the Artistic License 2.0 or the LGPL v3.0, at your convenience.

=end pod

use Term::TablePrint;

multi sub MAIN() is export {
  print-table (['path'], |%*ENV<PATH>.split(':').map: { [ $_, ] }) if $*OUT.t
}

