﻿using System.Data.Entity;

using SetLocale.Client.Web.Entities;

namespace SetLocale.Client.Web.Repositories
{
    public class SetLocaleDbContext : DbContext
    {
        public SetLocaleDbContext(string connectionStringOrName)
            : base(connectionStringOrName)
        {
            Database.SetInitializer(new SetLocaleDbInitializer());
        }

        public SetLocaleDbContext()
            : this("Name=SetLocale")
        {

        }

        public DbSet<User> Users { get; set; }
        public DbSet<Word> Words { get; set; }
        public DbSet<App> Apps { get; set; }

        public DbSet<RequestLog> RequestLogs { get; set; }
    }
}