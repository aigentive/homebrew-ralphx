cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.21.0"
  sha256 arm:   "0a9eb96930e6fd6d6cdad58ee248f01dd4868fa97cd38d3a240b7cc95d8767ab",
         intel: "cd00ceed0e7f3be077e63df51f30abd229d471ce3e85cf9dbe2a0c0de0e3113c"

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
