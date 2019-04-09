require "./sys/types"

lib LibC
  type DIR = Void

  struct Dirent
    d_fileno : InoT
    d_reclen : UInt16T
    d_namlen : UInt16T
    d_type : UInt8T
    d_name : StaticArray(Char, 512)
  end

  fun closedir(x0 : DIR*) : Int
  fun opendir(x0 : Char*) : DIR*
  fun readdir(x0 : DIR*) : Dirent*
  fun rewinddir(x0 : DIR*) : Void
end
