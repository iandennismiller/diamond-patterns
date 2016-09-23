class DiamondPatterns < Formula
  desc "Diamond Patterns for creating projects"
  homepage "https://github.com/iandennismiller/diamond-patterns"
  url "https://github.com/iandennismiller/diamond-patterns/archive/0.2.1.tar.gz"
  sha256 "c8ff734544352f250186c388206aba4feacb944e194ae136b06c71e910d26f94"

  bottle :unneeded

  def install
    bin.install "bin/diamond"
    bin.install "bin/diamond-conf-init"
    bin.install "bin/diamond-upgrade"
    bin.install "bin/project-git-init.sh"
    bin.install "bin/project-list"
    bin.install "bin/project-new"
    bin.install "bin/project-new3"
    bin.install "bin/project-open.sh"
    bin.install "bin/project-workon"
  end
end
