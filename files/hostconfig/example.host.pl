#
# example.host config file for backup of everything as user backuppc
#
$Conf{XferMethod} = 'rsync';

$Conf{BackupFilesExclude} = {
  '*' => [
    '/sys',
    '/proc',
    '/cdrom',
    '/dvd',
    '/floppy',
    '/var/lib/backuppc',
    '/mnt'
  ]
};

$Conf{RsyncClientCmd} = '$sshPath -o StrictHostKeyChecking=no -q -x -l backuppc $host sudo $rsyncPath $argList+';

$Conf{RsyncClientRestoreCmd} = '$sshPath -o StrictHostKeyChecking=no -q -x -l backuppc sudo $host $rsyncPath $argList+';

