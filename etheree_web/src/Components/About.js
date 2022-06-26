import React, { Component } from "react";
import Fade from "react-reveal";

class About extends Component {
  render() {
    if (!this.props.data) return null;

    const name = this.props.data.name;
    const profilepic = "images/" + this.props.data.image;
    const bio = this.props.data.bio;
    const street = this.props.data.address.street;
    const city = this.props.data.address.city;
    const state = this.props.data.address.state;
    const zip = this.props.data.address.zip;
    const phone = this.props.data.phone;
    const email = this.props.data.email;
    const resumeDownload = this.props.data.resumedownload;

    return (
      <section id="about">
        <Fade duration={1000}>
          <div className="row">
            <div className="three columns">
              <img
                className="profile-pic"
                src={profilepic}
                alt="Nordic Giant Profile Pic"
              />
            </div>
            <div className="nine columns main-col">
              <h2>About Etheree(EEE)</h2>

              <p>{bio}</p>
              <div className="row">
                <div className="columns main-col">
                  <h2>Components of Ether.ee</h2>
                  <p className="">
                  1. "Giver" is the one who donates assets to Etheree.
                  Giver can donate a variety of assets, including fiat currency, crypto currency, and physical assets.
                  </p><p>
                  2. "Receiver" is the one who receives basic earnings on Etheree.
                  Anyone can receive a certain amount of EEE at regular intervals depending on the applicable conditions.
                  </p><p>
                  3. "Supporters" are those who participate in the community.
                  You can support Etheree in a variety of ways and participate in various events to help.
                  </p>
                </div>
                <div className="columns download">
                  <p>
                    <a href={resumeDownload} className="button">
                      <i className="fa fa-download"></i>Download WhitePaper
                    </a>
                  </p>
                </div>
              </div>
            </div>
          </div>
        </Fade>
      </section>
    );
  }
}

export default About;
