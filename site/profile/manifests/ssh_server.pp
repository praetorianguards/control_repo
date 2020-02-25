class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDChS606O+fjuPd4gUx99dXTnvoMgjxSWPldL+SrOyXaCKXWzPfakpqLHdNjWxpTC7ugqeiV5BGUTzHpNzDRfaCMcXtbkOjUZxgHptkUhP6r5oe6eAX8+GTIMRU8JjyqaSdkNhqeGXdImRBf6giQ/tcniCiq6HuRaBgfdjaLgl86++57tSDKZnp2bE2Wg0RYLTBPnRHtCp5p03HC9/YAo0V3UevuLqLeYSb2PeyqUTTJcC6VkdvuThN2oNP7S6rEFQxv9yrEDA6IoL/jmmhgxaMYHEcvUN+L2bZibN7Txbp3qKYrZbVWs/6pepelkTHNL6OY+zr2JKTyzcs9ArI1K6x',
  }  
}
