cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.40.0"
  sha256 arm:   "44e083bad418ef25a85fd02c7a0c01e64e34e671e720bf84446e338b05bab5cb",
         intel: "69bf496fd742817262385fbc7c735187811000cda9038e685f577c9ae2d87c65"

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
