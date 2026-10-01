cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.567"
  sha256 arm:   "1f5f01b675c238240a986dd752521bd1acc57e342fb742d1e8ed84e776aa3214",
         intel: "ab4e09ef7f4e89f0fa4ee8449949f8245c42a1ee836860bd620cfa8dd84bf75e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
