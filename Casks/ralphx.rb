cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.12.2"
  sha256 arm:   "ab32c39cb41904c12a0a74f5f7278021a79e777460ed88c5f200cdb6fcfb1912",
         intel: "d3b902ded4d744aea92619ca5145c53f5ecbeae190d9bb3f4b223e456f8ed382"

  url "https://github.com/aigentive/ralphx.app/releases/download/v#{version}/RalphX_#{version}_#{arch}.dmg"
  name "RalphX"
  desc "Native Mac GUI for autonomous AI development"
  homepage "https://github.com/aigentive/ralphx.app"
  auto_updates true

  depends_on formula: "node"
  depends_on macos: ">= :ventura"

  app "RalphX.app"

  caveats do
    <<~EOS
      Install at least one supported AI harness CLI after install.
      RalphX can update itself in-app after install.
      To force a Homebrew-managed refresh, run: brew upgrade --cask ralphx
    EOS
  end
end
