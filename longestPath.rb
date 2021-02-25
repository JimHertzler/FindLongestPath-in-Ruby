# What this script does: Find the Longest-Path, that is, the most characters.
# Why would we want to do this?
# Because it may still be possible to choke your archive tool by feeding it a very long path.

# Running this Ruby-Script in your current-working-directory will show you the longest path.

begin
    longestPath=0
    Dir['**/*'].each do |path| # Find the longest path.
      if longestPath<path.length
        longestPath=path.length
        printf("%s %s\n",path.length,path)
      end
    end
rescue
    printf("%s\n",$!)
end
