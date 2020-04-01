#---
# Excerpted from "Programming Elixir ≥ 1.6",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/elixir16 for more book information.
#---

result  =  with {:ok, file}   =  File.open("/etc/passwd"),
                content       =  IO.read(file, :all),
                :ok           =  File.close(file),
                [_, uid, gid] <- Regex.run(~r/^xxx:.*?:(\d+):(\d+)/, content)
           do
                "Group: #{gid}, User: #{uid}"
           end
IO.puts inspect(result)       #=> nil
