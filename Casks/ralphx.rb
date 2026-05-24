cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.30.0"
  sha256 arm:   "bf97b91e2c76b97c2d46339eb1c06265381347e842264d3004fe34635da8d6f7",
         intel: "1ec0d17e45c85ee324af9a7efdbe638c453b54c60ab694940f8bd2772a139885"

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
