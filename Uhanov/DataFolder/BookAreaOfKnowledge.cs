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
    
    public partial class BookAreaOfKnowledge
    {
        public int IdBookAreaOfKnowledge { get; set; }
        public int IdBook { get; set; }
        public int IdAreaOfKnowledge { get; set; }
    
        public virtual AreaOfKnowledge AreaOfKnowledge { get; set; }
        public virtual Book Book { get; set; }
    }
}
