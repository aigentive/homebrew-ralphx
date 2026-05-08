cask "ralphx" do
  arch arm: "aarch64", intel: "x86_64"

  version "0.8.5"
  sha256 arm:   "f106b3801a9d8182f650532f228cf18c2653048d58b3f27ea03a7b780fcb69d2",
         intel: "b419d8591c9987ddc292957dd2a1adf2958ce005f373576b03a8d10ba46ffcef"

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
