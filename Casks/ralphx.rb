cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.33.0"
  sha256 arm:   "601536936f33e202b186f71f9ff9904a358fdeb8d972cd908de4779c671657fb",
         intel: "95b4dbbfb1c15ce3f2fb9958c437f9d8d07bcccb95975bfca205d94b5ed85113"

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
