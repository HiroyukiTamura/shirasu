import React from 'react';
import Link from '@docusaurus/Link';
import {GitHub, Twitter, Linkedin} from 'react-feather';

export const Nav = ({link}) => {
  return (
    <div id="main-nav">
      <a href="/" className="logo">
        <img src="../static/img/full-logo.svg" alt="AppLogo" />
      </a>
      <div className="links">
        <Link to={link.to} title={link.title}>
          {link.label}
        </Link>
        <div className="sep" />
        <Link to="/docs" title="GraphQL Inspector - Documentation">
          Documentation
        </Link>
        <div className="sep" />
        <a
          href="#contact-us"
          title="GraphQL Inspector - Contact us"
          className="scroll-to"
        >
          Contact Us
        </a>
        <div className="social-links">
          <a
            href="https://github.com/kamilkisiela/graphql-inspector"
            title="GitHub Repository"
          >
            <GitHub />
          </a>
          <a href="https://twitter.com/kamilkisiela" title="Twitter Profile">
            <Twitter />
          </a>
        </div>
      </div>
    </div>
  );
};
