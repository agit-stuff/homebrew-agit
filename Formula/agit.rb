# frozen_string_literal: true

# Homebrew formula for AGIT
#
# Usage:
#   brew tap agit-stuff/agit
#   brew install agit

class Agit < Formula
  desc "AI-native Git wrapper for capturing context alongside code"
  homepage "https://github.com/agit-stuff/agit"
  version "0.2.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    on_intel do
      url "https://github.com/agit-stuff/agit/releases/download/v#{version}/agit-macos-x86_64.tar.gz"
      sha256 "4896854715046e21036cf4083ff3e9d90da503330a5f646e77379bb0eba5bb8e"
    end

    on_arm do
      url "https://github.com/agit-stuff/agit/releases/download/v#{version}/agit-macos-aarch64.tar.gz"
      sha256 "11dd368628e69948bec331610365956a5b2a737c1b25d7c407cc7475816990f3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/agit-stuff/agit/releases/download/v#{version}/agit-linux-x86_64.tar.gz"
      sha256 ""
    end

    on_arm do
      url "https://github.com/agit-stuff/agit/releases/download/v#{version}/agit-linux-aarch64.tar.gz"
      sha256 "cb15e25bf96a651fdc3f7cafd78cf194e1719f0268c8a602cd9e72d78710280f"
    end
  end

  def install
    bin.install "agit"
  end

  test do
    assert_match "agit #{version}", shell_output("#{bin}/agit --version")
  end
end
