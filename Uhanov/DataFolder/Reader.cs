//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LibraryBook.DataFolder
{
    using System;
    using System.Collections.Generic;
    
    public partial class Reader
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Reader()
        {
            this.UsageBooks = new HashSet<UsageBooks>();
        }
    
        public int IdReader { get; set; }
        public string UniqueNumberReaderCard { get; set; }
        public string LastNameReader { get; set; }
        public string FirstNameReader { get; set; }
        public string MiddleNameReader { get; set; }
        public int IdAdderss { get; set; }
        public string NumberPhoneReader { get; set; }
        public string HomePhoneReader { get; set; }
        public System.DateTime DateOfBirthReader { get; set; }
        public byte[] PhotoReader { get; set; }
    
        public virtual Adress Adress { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<UsageBooks> UsageBooks { get; set; }
    }
}
