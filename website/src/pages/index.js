import React from 'react';
import clsx from 'clsx';
import Layout from '@theme/Layout';
import Link from '@docusaurus/Link';
import useDocusaurusContext from '@docusaurus/useDocusaurusContext';
import useBaseUrl from '@docusaurus/useBaseUrl';
import styles from './styles.module.css';
import classnames from 'classnames';
import Image from '@theme/IdealImage';
import {GitHub, Twitter} from "react-feather";

const features = [
    {
        title: 'バックグラウンド再生',
        imgUrl: '../../../static/img/undraw_listen.svg',
        text: (
            <p>
                長時間番組もバックグラウンド再生可能。<br/>
                接続されたBluetooth機器等から自由に停止・再生出来ます。
            </p>
        ),
    },
    {
        title: '無広告・課金機能なし',
        imgUrl: '../../../static/img/undraw_unlock_24mb.svg',
        text: (
            <p>
                アプリ本体には広告・課金が必要な機能は一切ありません。
            </p>
        ),
    },
    {
        title: 'セキュアで透明性の高いアプリ',
        imgUrl: '../../../static/img/undraw_Security.svg',
        text: (
            <p>
                本アプリ・Webページのコード全文を公開しており、開発には誰でも参加することができます。<br/>
                もちろんこのWebページも編集可能です。
            </p>
        ),
    },
];

function Feature({imageUrl, title, description}) {
    const imgUrl = useBaseUrl(imageUrl);
    return (
        <div className={clsx('col col--4', styles.feature)}>
            {imgUrl && (
                <div className="text--center">
                    <img className={styles.featureImage} src={imgUrl} alt={title}/>
                </div>
            )}
            <h3>{title}</h3>
            <p>{description}</p>
        </div>
    );
}

function Feature2({reverse, title, imgUrl, text}) {
    const left = <div className={styles.featureImage}>
        {imgUrl && (
            <div className="text--center">
                <img className={styles.featureImage} src={imgUrl} alt={title}/>
            </div>
        )}
    </div>;
    const right = (
        <div className={styles.featureText}>
            <h3 className={styles.featureTitle}>{title}</h3>
            {text}
        </div>
    );

    return (
        <div className={styles.featureContainer}>
            <div
                className={classnames(styles.featureContent, {
                    [styles.reversed]: reverse === true,
                })}
            >
                {reverse ? (
                    <>
                        {right}
                        {left}
                    </>
                ) : (
                    <>
                        {left}
                        {right}
                    </>
                )}
            </div>
        </div>
    );
}

function Home() {
    const context = useDocusaurusContext();
    const {siteConfig = {}} = context;
    return (
        <Layout
            title={`Hello from ${siteConfig.title}`}
            description="Description will go into a meta tag in <head />">
            <header className={clsx('hero', styles.heroBanner)}>
                <div className="mainContainer">
                    <div id="main-nav">
                        <a href="/" className="logo">
                            <img src="../../static/img/full-logo.svg" alt="AppLogo" />
                        </a>
                        <div className="links">
                            {/*<Link to={link.to} title={link.title}>*/}
                            {/*    {link.label}*/}
                            {/*</Link>*/}
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
                </div>
            </header>
            <main>
                {features && features.length > 0 && (
                    <section className={styles.features}>
                        <div className="container">
                            {features.map((props, idx) => (
                                <Feature2 reverse={idx %2 !== 0} key={idx} {...props} />
                            ))}
                        </div>
                    </section>
                )}
            </main>
        </Layout>
    );
}

export default Home;
