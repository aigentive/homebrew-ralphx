cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.50.0"
  sha256 arm:   "2468f3a5aab47688656fd727bffc1289deb09d625898e1cf707b7c906bafea1f",
         intel: "17181a03967009e6f3369591167d87b75a169df3edcacabb2834664768df0403"

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
