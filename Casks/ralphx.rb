cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.35.0"
  sha256 arm:   "cdb787e78f5350b3fb4e06001727a14a85756ded7e2aa99186d502d629e86950",
         intel: "74d91ae18966f1282e6c718610364435d338fbd5666da8d13fc6d3079fd1e135"

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
